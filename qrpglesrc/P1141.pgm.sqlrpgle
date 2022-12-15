**free

ctl-opt dftactgrp(*no);

dcl-pi P1141;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P1136.rpgleinc'
/copy 'qrpgleref/P412.rpgleinc'
/copy 'qrpgleref/P420.rpgleinc'

dcl-ds T1013 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T1013 FROM T1013 LIMIT 1;

theCharVar = 'Hello from P1141';
dsply theCharVar;
P1136();
P412();
P420();
return;