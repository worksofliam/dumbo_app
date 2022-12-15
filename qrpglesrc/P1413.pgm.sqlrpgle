**free

ctl-opt dftactgrp(*no);

dcl-pi P1413;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P102.rpgleinc'
/copy 'qrpgleref/P1303.rpgleinc'
/copy 'qrpgleref/P255.rpgleinc'

dcl-ds T157 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T157 FROM T157 LIMIT 1;

theCharVar = 'Hello from P1413';
dsply theCharVar;
P102();
P1303();
P255();
return;