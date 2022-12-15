**free

ctl-opt dftactgrp(*no);

dcl-pi P5172;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P371.rpgleinc'
/copy 'qrpgleref/P642.rpgleinc'
/copy 'qrpgleref/P1509.rpgleinc'

dcl-ds T1302 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T1302 FROM T1302 LIMIT 1;

theCharVar = 'Hello from P5172';
dsply theCharVar;
P371();
P642();
P1509();
return;