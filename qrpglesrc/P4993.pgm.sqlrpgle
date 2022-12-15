**free

ctl-opt dftactgrp(*no);

dcl-pi P4993;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P3937.rpgleinc'
/copy 'qrpgleref/P1236.rpgleinc'
/copy 'qrpgleref/P3382.rpgleinc'

dcl-ds T1680 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T1680 FROM T1680 LIMIT 1;

theCharVar = 'Hello from P4993';
dsply theCharVar;
P3937();
P1236();
P3382();
return;