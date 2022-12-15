**free

ctl-opt dftactgrp(*no);

dcl-pi P377;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P224.rpgleinc'
/copy 'qrpgleref/P313.rpgleinc'
/copy 'qrpgleref/P268.rpgleinc'

dcl-ds T615 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T615 FROM T615 LIMIT 1;

theCharVar = 'Hello from P377';
dsply theCharVar;
P224();
P313();
P268();
return;