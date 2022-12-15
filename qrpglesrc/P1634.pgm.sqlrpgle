**free

ctl-opt dftactgrp(*no);

dcl-pi P1634;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P62.rpgleinc'
/copy 'qrpgleref/P489.rpgleinc'
/copy 'qrpgleref/P1413.rpgleinc'

dcl-ds theTable extname('T653') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T653 LIMIT 1;

theCharVar = 'Hello from P1634';
dsply theCharVar;
P62();
P489();
P1413();
return;