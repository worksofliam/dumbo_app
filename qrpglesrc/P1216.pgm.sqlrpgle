**free

ctl-opt dftactgrp(*no);

dcl-pi P1216;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P1054.rpgleinc'
/copy 'qrpgleref/P19.rpgleinc'
/copy 'qrpgleref/P455.rpgleinc'

dcl-ds T1021 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T1021 FROM T1021 LIMIT 1;

theCharVar = 'Hello from P1216';
dsply theCharVar;
P1054();
P19();
P455();
return;