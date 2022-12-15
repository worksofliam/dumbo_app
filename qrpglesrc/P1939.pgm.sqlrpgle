**free

ctl-opt dftactgrp(*no);

dcl-pi P1939;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P791.rpgleinc'
/copy 'qrpgleref/P1715.rpgleinc'
/copy 'qrpgleref/P982.rpgleinc'

dcl-ds T1240 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T1240 FROM T1240 LIMIT 1;

theCharVar = 'Hello from P1939';
dsply theCharVar;
P791();
P1715();
P982();
return;