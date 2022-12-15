**free

ctl-opt dftactgrp(*no);

dcl-pi P343;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P237.rpgleinc'
/copy 'qrpgleref/P125.rpgleinc'

dcl-ds T1061 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T1061 FROM T1061 LIMIT 1;

theCharVar = 'Hello from P343';
dsply theCharVar;
P237();
P125();
return;