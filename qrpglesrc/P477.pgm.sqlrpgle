**free

ctl-opt dftactgrp(*no);

dcl-pi P477;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P456.rpgleinc'
/copy 'qrpgleref/P162.rpgleinc'
/copy 'qrpgleref/P169.rpgleinc'

dcl-ds theTable extname('T147') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T147 LIMIT 1;

theCharVar = 'Hello from P477';
dsply theCharVar;
P456();
P162();
P169();
return;