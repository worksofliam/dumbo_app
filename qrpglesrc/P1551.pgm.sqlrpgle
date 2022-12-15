**free

ctl-opt dftactgrp(*no);

dcl-pi P1551;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P919.rpgleinc'
/copy 'qrpgleref/P420.rpgleinc'
/copy 'qrpgleref/P1403.rpgleinc'

dcl-ds T874 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T874 FROM T874 LIMIT 1;

theCharVar = 'Hello from P1551';
dsply theCharVar;
P919();
P420();
P1403();
return;