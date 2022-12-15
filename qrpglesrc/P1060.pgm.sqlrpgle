**free

ctl-opt dftactgrp(*no);

dcl-pi P1060;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P733.rpgleinc'
/copy 'qrpgleref/P484.rpgleinc'
/copy 'qrpgleref/P995.rpgleinc'

dcl-ds theTable extname('T1004') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T1004 LIMIT 1;

theCharVar = 'Hello from P1060';
dsply theCharVar;
P733();
P484();
P995();
return;