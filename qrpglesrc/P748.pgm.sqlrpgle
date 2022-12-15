**free

ctl-opt dftactgrp(*no);

dcl-pi P748;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P212.rpgleinc'
/copy 'qrpgleref/P100.rpgleinc'
/copy 'qrpgleref/P498.rpgleinc'

dcl-ds T40 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T40 FROM T40 LIMIT 1;

theCharVar = 'Hello from P748';
dsply theCharVar;
P212();
P100();
P498();
return;