**free

ctl-opt dftactgrp(*no);

dcl-pi P4884;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P4228.rpgleinc'
/copy 'qrpgleref/P3679.rpgleinc'
/copy 'qrpgleref/P3356.rpgleinc'

dcl-ds T420 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T420 FROM T420 LIMIT 1;

theCharVar = 'Hello from P4884';
dsply theCharVar;
P4228();
P3679();
P3356();
return;