**free

ctl-opt dftactgrp(*no);

dcl-pi P5068;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P1035.rpgleinc'
/copy 'qrpgleref/P3280.rpgleinc'
/copy 'qrpgleref/P3313.rpgleinc'

dcl-ds T147 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T147 FROM T147 LIMIT 1;

theCharVar = 'Hello from P5068';
dsply theCharVar;
P1035();
P3280();
P3313();
return;