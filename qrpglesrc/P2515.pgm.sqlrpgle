**free

ctl-opt dftactgrp(*no);

dcl-pi P2515;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P1447.rpgleinc'
/copy 'qrpgleref/P2163.rpgleinc'
/copy 'qrpgleref/P360.rpgleinc'

dcl-ds T893 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T893 FROM T893 LIMIT 1;

theCharVar = 'Hello from P2515';
dsply theCharVar;
P1447();
P2163();
P360();
return;