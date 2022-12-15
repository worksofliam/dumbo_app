**free

ctl-opt dftactgrp(*no);

dcl-pi P1132;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P384.rpgleinc'
/copy 'qrpgleref/P511.rpgleinc'
/copy 'qrpgleref/P608.rpgleinc'

dcl-ds T473 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T473 FROM T473 LIMIT 1;

theCharVar = 'Hello from P1132';
dsply theCharVar;
P384();
P511();
P608();
return;