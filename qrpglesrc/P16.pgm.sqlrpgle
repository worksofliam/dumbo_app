**free

ctl-opt dftactgrp(*no);

dcl-pi P16;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P9.rpgleinc'
/copy 'qrpgleref/P6.rpgleinc'

dcl-ds T37 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T37 FROM T37 LIMIT 1;

theCharVar = 'Hello from P16';
dsply theCharVar;
P9();
P6();
return;