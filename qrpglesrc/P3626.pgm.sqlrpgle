**free

ctl-opt dftactgrp(*no);

dcl-pi P3626;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P1360.rpgleinc'
/copy 'qrpgleref/P3040.rpgleinc'
/copy 'qrpgleref/P1060.rpgleinc'

dcl-ds T1000 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T1000 FROM T1000 LIMIT 1;

theCharVar = 'Hello from P3626';
dsply theCharVar;
P1360();
P3040();
P1060();
return;