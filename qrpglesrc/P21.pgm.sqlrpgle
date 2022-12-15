**free

ctl-opt dftactgrp(*no);

dcl-pi P21;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P19.rpgleinc'
/copy 'qrpgleref/P12.rpgleinc'
/copy 'qrpgleref/P9.rpgleinc'

dcl-ds T173 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T173 FROM T173 LIMIT 1;

theCharVar = 'Hello from P21';
dsply theCharVar;
P19();
P12();
P9();
return;