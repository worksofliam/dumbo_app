**free

ctl-opt dftactgrp(*no);

dcl-pi P527;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P360.rpgleinc'
/copy 'qrpgleref/P425.rpgleinc'
/copy 'qrpgleref/P416.rpgleinc'

dcl-ds T1032 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T1032 FROM T1032 LIMIT 1;

theCharVar = 'Hello from P527';
dsply theCharVar;
P360();
P425();
P416();
return;