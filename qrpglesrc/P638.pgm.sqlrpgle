**free

ctl-opt dftactgrp(*no);

dcl-pi P638;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P564.rpgleinc'
/copy 'qrpgleref/P250.rpgleinc'
/copy 'qrpgleref/P276.rpgleinc'

dcl-ds T915 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T915 FROM T915 LIMIT 1;

theCharVar = 'Hello from P638';
dsply theCharVar;
P564();
P250();
P276();
return;