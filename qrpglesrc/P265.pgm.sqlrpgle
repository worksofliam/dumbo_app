**free

ctl-opt dftactgrp(*no);

dcl-pi P265;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P79.rpgleinc'
/copy 'qrpgleref/P0.rpgleinc'
/copy 'qrpgleref/P34.rpgleinc'

dcl-ds theTable extname('T257') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T257 LIMIT 1;

theCharVar = 'Hello from P265';
dsply theCharVar;
P79();
P0();
P34();
return;