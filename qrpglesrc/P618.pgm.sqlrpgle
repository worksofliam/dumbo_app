**free

ctl-opt dftactgrp(*no);

dcl-pi P618;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P557.rpgleinc'
/copy 'qrpgleref/P531.rpgleinc'
/copy 'qrpgleref/P132.rpgleinc'

dcl-ds T14 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T14 FROM T14 LIMIT 1;

theCharVar = 'Hello from P618';
dsply theCharVar;
P557();
P531();
P132();
return;