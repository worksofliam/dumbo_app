**free

ctl-opt dftactgrp(*no);

dcl-pi P1312;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P475.rpgleinc'
/copy 'qrpgleref/P963.rpgleinc'
/copy 'qrpgleref/P444.rpgleinc'

dcl-ds T643 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T643 FROM T643 LIMIT 1;

theCharVar = 'Hello from P1312';
dsply theCharVar;
P475();
P963();
P444();
return;