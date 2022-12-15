**free

ctl-opt dftactgrp(*no);

dcl-pi P2889;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P2781.rpgleinc'
/copy 'qrpgleref/P2079.rpgleinc'
/copy 'qrpgleref/P2076.rpgleinc'

dcl-ds T324 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T324 FROM T324 LIMIT 1;

theCharVar = 'Hello from P2889';
dsply theCharVar;
P2781();
P2079();
P2076();
return;