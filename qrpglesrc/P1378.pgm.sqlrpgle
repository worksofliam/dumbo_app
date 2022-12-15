**free

ctl-opt dftactgrp(*no);

dcl-pi P1378;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P811.rpgleinc'
/copy 'qrpgleref/P1176.rpgleinc'
/copy 'qrpgleref/P10.rpgleinc'

dcl-ds theTable extname('T1049') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T1049 LIMIT 1;

theCharVar = 'Hello from P1378';
dsply theCharVar;
P811();
P1176();
P10();
return;