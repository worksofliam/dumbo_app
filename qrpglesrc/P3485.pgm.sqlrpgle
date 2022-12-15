**free

ctl-opt dftactgrp(*no);

dcl-pi P3485;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P1070.rpgleinc'
/copy 'qrpgleref/P789.rpgleinc'
/copy 'qrpgleref/P1163.rpgleinc'

dcl-ds T969 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T969 FROM T969 LIMIT 1;

theCharVar = 'Hello from P3485';
dsply theCharVar;
P1070();
P789();
P1163();
return;