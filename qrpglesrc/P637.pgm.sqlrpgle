**free

ctl-opt dftactgrp(*no);

dcl-pi P637;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P599.rpgleinc'
/copy 'qrpgleref/P83.rpgleinc'
/copy 'qrpgleref/P97.rpgleinc'

dcl-ds theTable extname('T236') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T236 LIMIT 1;

theCharVar = 'Hello from P637';
dsply theCharVar;
P599();
P83();
P97();
return;