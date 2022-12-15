**free

ctl-opt dftactgrp(*no);

dcl-pi P637;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P358.rpgleinc'
/copy 'qrpgleref/P33.rpgleinc'
/copy 'qrpgleref/P602.rpgleinc'

dcl-ds theTable extname('T360') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T360 LIMIT 1;

theCharVar = 'Hello from P637';
dsply theCharVar;
P358();
P33();
P602();
return;