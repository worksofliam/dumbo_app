**free

ctl-opt dftactgrp(*no);

dcl-pi P1082;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P1077.rpgleinc'
/copy 'qrpgleref/P255.rpgleinc'
/copy 'qrpgleref/P887.rpgleinc'

dcl-ds T38 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T38 FROM T38 LIMIT 1;

theCharVar = 'Hello from P1082';
dsply theCharVar;
P1077();
P255();
P887();
return;