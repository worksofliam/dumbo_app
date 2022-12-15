**free

ctl-opt dftactgrp(*no);

dcl-pi P1370;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P261.rpgleinc'
/copy 'qrpgleref/P1150.rpgleinc'
/copy 'qrpgleref/P1048.rpgleinc'

dcl-ds T472 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T472 FROM T472 LIMIT 1;

theCharVar = 'Hello from P1370';
dsply theCharVar;
P261();
P1150();
P1048();
return;