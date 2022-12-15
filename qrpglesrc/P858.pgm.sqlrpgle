**free

ctl-opt dftactgrp(*no);

dcl-pi P858;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P584.rpgleinc'
/copy 'qrpgleref/P494.rpgleinc'
/copy 'qrpgleref/P196.rpgleinc'

dcl-ds theTable extname('T184') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T184 LIMIT 1;

theCharVar = 'Hello from P858';
dsply theCharVar;
P584();
P494();
P196();
return;