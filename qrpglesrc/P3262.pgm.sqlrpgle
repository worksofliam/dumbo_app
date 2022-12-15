**free

ctl-opt dftactgrp(*no);

dcl-pi P3262;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P851.rpgleinc'
/copy 'qrpgleref/P2208.rpgleinc'
/copy 'qrpgleref/P207.rpgleinc'

dcl-ds T497 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T497 FROM T497 LIMIT 1;

theCharVar = 'Hello from P3262';
dsply theCharVar;
P851();
P2208();
P207();
return;