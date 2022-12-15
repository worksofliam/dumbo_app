**free

ctl-opt dftactgrp(*no);

dcl-pi P4996;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P688.rpgleinc'
/copy 'qrpgleref/P3025.rpgleinc'
/copy 'qrpgleref/P1574.rpgleinc'

dcl-ds T254 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T254 FROM T254 LIMIT 1;

theCharVar = 'Hello from P4996';
dsply theCharVar;
P688();
P3025();
P1574();
return;