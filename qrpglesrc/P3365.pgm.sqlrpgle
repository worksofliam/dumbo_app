**free

ctl-opt dftactgrp(*no);

dcl-pi P3365;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P2522.rpgleinc'
/copy 'qrpgleref/P1933.rpgleinc'
/copy 'qrpgleref/P1574.rpgleinc'

dcl-ds T513 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T513 FROM T513 LIMIT 1;

theCharVar = 'Hello from P3365';
dsply theCharVar;
P2522();
P1933();
P1574();
return;