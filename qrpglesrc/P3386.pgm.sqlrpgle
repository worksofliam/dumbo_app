**free

ctl-opt dftactgrp(*no);

dcl-pi P3386;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P3380.rpgleinc'
/copy 'qrpgleref/P2120.rpgleinc'
/copy 'qrpgleref/P485.rpgleinc'

dcl-ds T881 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T881 FROM T881 LIMIT 1;

theCharVar = 'Hello from P3386';
dsply theCharVar;
P3380();
P2120();
P485();
return;