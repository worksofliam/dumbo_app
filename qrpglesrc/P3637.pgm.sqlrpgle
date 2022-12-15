**free

ctl-opt dftactgrp(*no);

dcl-pi P3637;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P2639.rpgleinc'
/copy 'qrpgleref/P16.rpgleinc'
/copy 'qrpgleref/P788.rpgleinc'

dcl-ds theTable extname('T845') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T845 LIMIT 1;

theCharVar = 'Hello from P3637';
dsply theCharVar;
P2639();
P16();
P788();
return;