**free

ctl-opt dftactgrp(*no);

dcl-pi P220;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P194.rpgleinc'
/copy 'qrpgleref/P125.rpgleinc'
/copy 'qrpgleref/P106.rpgleinc'

dcl-ds theTable extname('T387') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T387 LIMIT 1;

theCharVar = 'Hello from P220';
dsply theCharVar;
P194();
P125();
P106();
return;