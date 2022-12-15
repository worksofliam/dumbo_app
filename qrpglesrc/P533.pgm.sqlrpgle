**free

ctl-opt dftactgrp(*no);

dcl-pi P533;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P415.rpgleinc'
/copy 'qrpgleref/P69.rpgleinc'
/copy 'qrpgleref/P458.rpgleinc'

dcl-ds T201 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T201 FROM T201 LIMIT 1;

theCharVar = 'Hello from P533';
dsply theCharVar;
P415();
P69();
P458();
return;