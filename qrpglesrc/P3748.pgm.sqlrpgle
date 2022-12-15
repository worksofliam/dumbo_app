**free

ctl-opt dftactgrp(*no);

dcl-pi P3748;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P3733.rpgleinc'
/copy 'qrpgleref/P3626.rpgleinc'
/copy 'qrpgleref/P1817.rpgleinc'

dcl-ds T827 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T827 FROM T827 LIMIT 1;

theCharVar = 'Hello from P3748';
dsply theCharVar;
P3733();
P3626();
P1817();
return;