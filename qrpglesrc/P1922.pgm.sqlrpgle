**free

ctl-opt dftactgrp(*no);

dcl-pi P1922;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P910.rpgleinc'
/copy 'qrpgleref/P1726.rpgleinc'
/copy 'qrpgleref/P971.rpgleinc'

dcl-ds theTable extname('T849') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T849 LIMIT 1;

theCharVar = 'Hello from P1922';
dsply theCharVar;
P910();
P1726();
P971();
return;