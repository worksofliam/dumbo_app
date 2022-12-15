**free

ctl-opt dftactgrp(*no);

dcl-pi P3579;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P1067.rpgleinc'
/copy 'qrpgleref/P989.rpgleinc'
/copy 'qrpgleref/P609.rpgleinc'

dcl-ds T891 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T891 FROM T891 LIMIT 1;

theCharVar = 'Hello from P3579';
dsply theCharVar;
P1067();
P989();
P609();
return;