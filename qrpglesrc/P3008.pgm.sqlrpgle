**free

ctl-opt dftactgrp(*no);

dcl-pi P3008;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P615.rpgleinc'
/copy 'qrpgleref/P1709.rpgleinc'
/copy 'qrpgleref/P1436.rpgleinc'

dcl-ds theTable extname('T1076') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T1076 LIMIT 1;

theCharVar = 'Hello from P3008';
dsply theCharVar;
P615();
P1709();
P1436();
return;