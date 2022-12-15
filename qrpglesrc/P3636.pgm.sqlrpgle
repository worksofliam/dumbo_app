**free

ctl-opt dftactgrp(*no);

dcl-pi P3636;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P3458.rpgleinc'
/copy 'qrpgleref/P3373.rpgleinc'
/copy 'qrpgleref/P2890.rpgleinc'

dcl-ds T444 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T444 FROM T444 LIMIT 1;

theCharVar = 'Hello from P3636';
dsply theCharVar;
P3458();
P3373();
P2890();
return;