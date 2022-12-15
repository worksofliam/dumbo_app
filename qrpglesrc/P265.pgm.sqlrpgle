**free

ctl-opt dftactgrp(*no);

dcl-pi P265;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P126.rpgleinc'
/copy 'qrpgleref/P89.rpgleinc'
/copy 'qrpgleref/P130.rpgleinc'

dcl-ds T893 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T893 FROM T893 LIMIT 1;

theCharVar = 'Hello from P265';
dsply theCharVar;
P126();
P89();
P130();
return;