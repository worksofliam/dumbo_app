**free

ctl-opt dftactgrp(*no);

dcl-pi P1520;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P422.rpgleinc'
/copy 'qrpgleref/P705.rpgleinc'
/copy 'qrpgleref/P211.rpgleinc'

dcl-ds theTable extname('T1070') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T1070 LIMIT 1;

theCharVar = 'Hello from P1520';
dsply theCharVar;
P422();
P705();
P211();
return;