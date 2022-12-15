**free

ctl-opt dftactgrp(*no);

dcl-pi P2915;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P1840.rpgleinc'
/copy 'qrpgleref/P2770.rpgleinc'
/copy 'qrpgleref/P598.rpgleinc'

dcl-ds T455 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T455 FROM T455 LIMIT 1;

theCharVar = 'Hello from P2915';
dsply theCharVar;
P1840();
P2770();
P598();
return;