**free

ctl-opt dftactgrp(*no);

dcl-pi P2336;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P1261.rpgleinc'
/copy 'qrpgleref/P1667.rpgleinc'
/copy 'qrpgleref/P771.rpgleinc'

dcl-ds T1497 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T1497 FROM T1497 LIMIT 1;

theCharVar = 'Hello from P2336';
dsply theCharVar;
P1261();
P1667();
P771();
return;