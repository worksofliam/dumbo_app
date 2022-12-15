**free

ctl-opt dftactgrp(*no);

dcl-pi P2408;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P1981.rpgleinc'
/copy 'qrpgleref/P1707.rpgleinc'
/copy 'qrpgleref/P1466.rpgleinc'

dcl-ds theTable extname('T1207') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T1207 LIMIT 1;

theCharVar = 'Hello from P2408';
dsply theCharVar;
P1981();
P1707();
P1466();
return;