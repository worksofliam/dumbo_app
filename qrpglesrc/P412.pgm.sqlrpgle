**free

ctl-opt dftactgrp(*no);

dcl-pi P412;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P236.rpgleinc'
/copy 'qrpgleref/P44.rpgleinc'
/copy 'qrpgleref/P162.rpgleinc'

dcl-ds T1607 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T1607 FROM T1607 LIMIT 1;

theCharVar = 'Hello from P412';
dsply theCharVar;
P236();
P44();
P162();
return;