**free

ctl-opt dftactgrp(*no);

dcl-pi P3704;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P862.rpgleinc'
/copy 'qrpgleref/P1448.rpgleinc'
/copy 'qrpgleref/P1134.rpgleinc'

dcl-ds T1300 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T1300 FROM T1300 LIMIT 1;

theCharVar = 'Hello from P3704';
dsply theCharVar;
P862();
P1448();
P1134();
return;