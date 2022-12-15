**free

ctl-opt dftactgrp(*no);

dcl-pi P1244;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P398.rpgleinc'
/copy 'qrpgleref/P535.rpgleinc'
/copy 'qrpgleref/P118.rpgleinc'

dcl-ds theTable extname('T609') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T609 LIMIT 1;

theCharVar = 'Hello from P1244';
dsply theCharVar;
P398();
P535();
P118();
return;