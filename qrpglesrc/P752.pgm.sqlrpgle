**free

ctl-opt dftactgrp(*no);

dcl-pi P752;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P345.rpgleinc'
/copy 'qrpgleref/P327.rpgleinc'
/copy 'qrpgleref/P463.rpgleinc'

dcl-ds T1479 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T1479 FROM T1479 LIMIT 1;

theCharVar = 'Hello from P752';
dsply theCharVar;
P345();
P327();
P463();
return;