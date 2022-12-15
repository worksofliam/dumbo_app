**free

ctl-opt dftactgrp(*no);

dcl-pi P3524;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P1056.rpgleinc'
/copy 'qrpgleref/P337.rpgleinc'
/copy 'qrpgleref/P865.rpgleinc'

dcl-ds T548 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T548 FROM T548 LIMIT 1;

theCharVar = 'Hello from P3524';
dsply theCharVar;
P1056();
P337();
P865();
return;