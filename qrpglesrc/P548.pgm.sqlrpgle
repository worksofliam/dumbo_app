**free

ctl-opt dftactgrp(*no);

dcl-pi P548;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P201.rpgleinc'
/copy 'qrpgleref/P375.rpgleinc'
/copy 'qrpgleref/P44.rpgleinc'

dcl-ds T62 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T62 FROM T62 LIMIT 1;

theCharVar = 'Hello from P548';
dsply theCharVar;
P201();
P375();
P44();
return;