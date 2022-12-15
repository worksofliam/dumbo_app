**free

ctl-opt dftactgrp(*no);

dcl-pi P2831;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P2770.rpgleinc'
/copy 'qrpgleref/P760.rpgleinc'
/copy 'qrpgleref/P1939.rpgleinc'

dcl-ds T1117 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T1117 FROM T1117 LIMIT 1;

theCharVar = 'Hello from P2831';
dsply theCharVar;
P2770();
P760();
P1939();
return;