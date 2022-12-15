**free

ctl-opt dftactgrp(*no);

dcl-pi P1473;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P1259.rpgleinc'
/copy 'qrpgleref/P807.rpgleinc'
/copy 'qrpgleref/P1300.rpgleinc'

dcl-ds T840 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T840 FROM T840 LIMIT 1;

theCharVar = 'Hello from P1473';
dsply theCharVar;
P1259();
P807();
P1300();
return;