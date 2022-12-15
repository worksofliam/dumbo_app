**free

ctl-opt dftactgrp(*no);

dcl-pi P2631;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P303.rpgleinc'
/copy 'qrpgleref/P1739.rpgleinc'
/copy 'qrpgleref/P605.rpgleinc'

dcl-ds theTable extname('T1163') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T1163 LIMIT 1;

theCharVar = 'Hello from P2631';
dsply theCharVar;
P303();
P1739();
P605();
return;