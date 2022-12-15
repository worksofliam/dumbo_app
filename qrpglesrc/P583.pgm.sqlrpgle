**free

ctl-opt dftactgrp(*no);

dcl-pi P583;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P360.rpgleinc'
/copy 'qrpgleref/P276.rpgleinc'
/copy 'qrpgleref/P35.rpgleinc'

dcl-ds T856 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T856 FROM T856 LIMIT 1;

theCharVar = 'Hello from P583';
dsply theCharVar;
P360();
P276();
P35();
return;