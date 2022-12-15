**free

ctl-opt dftactgrp(*no);

dcl-pi P492;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P339.rpgleinc'
/copy 'qrpgleref/P420.rpgleinc'
/copy 'qrpgleref/P349.rpgleinc'

dcl-ds T1798 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T1798 FROM T1798 LIMIT 1;

theCharVar = 'Hello from P492';
dsply theCharVar;
P339();
P420();
P349();
return;